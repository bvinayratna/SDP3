package com.project.controller;

import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.Admin;
import com.project.model.Movie;
import com.project.model.MoviesPlayingInT;
import com.project.model.Screen;
import com.project.model.User;
import com.project.repository.MovieRepository;
import com.project.repository.MoviesPlayingRepository;
import com.project.repository.ScreenRepository;
import com.project.service.AdminService;
import com.project.service.MovieService;
import com.project.service.MoviesPlayingService;
import com.project.service.ScreenService;
import com.project.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService UserService;
	
	@Autowired
	MovieService movieService;
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	ScreenService screenService;
	
	@Autowired
	MoviesPlayingService moviesplayingService;
	
	@GetMapping("/")
	public ModelAndView indexpage(HttpServletRequest request) {
		return new ModelAndView("index");
	}
	
	@GetMapping("/login")
	public ModelAndView loginpage(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("username") != null) {
			List<Movie> movies = movieService.get_InTheatre_movies();
			mv.addObject("MOVIES", movies);
			mv.setViewName("homepage");
			//return "homepage";
		}
		else if(request.getSession().getAttribute("admin_username") != null) {
			mv.setViewName("adminhome");
			//return "adminhome";
		}
		else {
			mv.setViewName("login");
			//return "login";
		}
		return mv;
	}
	
	@GetMapping("/adminlogin")
	public String adminlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("username")!=null) {
			mv.setViewName("homepage");
			return "homepage";
		}
		else if(request.getSession().getAttribute("admin_username") != null) {
			mv.setViewName("adminhome");
			return "redirect:/adminhome";
		}
		else {
			mv.setViewName("adminlogin");
			return "adminlogin";
		}
		//return mv;
	}
	
	@GetMapping("/register")
	public ModelAndView registerpage(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("username") != null) {
			mv.setViewName("homepage");
			//return "homepage";
		}
		else if(request.getSession().getAttribute("admin_username") != null) {
			mv.setViewName("adminhome");
			//return "adminhome";
		}
		else {
			mv.setViewName("register");
			//return "register";
		}
		return mv;
	}
	
	@GetMapping("/home")
	public ModelAndView homepage(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("username") != null) {
			
			mv.setViewName("homepage");
			List<Movie> movies = movieService.get_InTheatre_movies(); 
//			List<String> movie_names = new ArrayList<>();
//			for(Movie x : movies) {
//				movie_names.add(x.getName());
//			}
			mv.addObject("MOVIES", movies);
//			mv.addObject("movie_names", movie_names);
			return mv;
		}
		else if(request.getSession().getAttribute("admin_username")!=null ) {
			mv.setViewName("adminhome");
			return mv;
		}
		else {
			mv.setViewName("login");
			return mv;
		}
	}
	
	@GetMapping("/adminhome")
	public ModelAndView adminhome(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("admin_username") != null) {
			String admin_username = (String) request.getSession().getAttribute("admin_username");
			Admin admin = adminService.getAdminById(admin_username);
			List<Screen> l = screenService.getScreenDetails(admin_username);
			mv.addObject("screens", l);
			mv.setViewName("adminhome");
			return mv;
		}
		else {
			mv.setViewName("adminlogin");
			return mv;
		}
	}
	
	@GetMapping("/adminhome/playMovieOnScreen")
	public ModelAndView playMovie(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("playmovieonscreen");
		List<Screen> screens = screenService.getScreenDetails((String)request.getSession().getAttribute("admin_username"));
		List<Movie> movies = movieService.get_InTheatre_movies();
		mv.addObject("screens", screens);
		mv.addObject("movies", movies);
		return mv;
	}
	
	@PostMapping("/adminhome/addToScreen")
	public ModelAndView addMovieToScreen(@ModelAttribute("moviesplaying") MoviesPlayingInT m_p, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		m_p.setPlay_id(m_p.getAdmin_username()+"#"+m_p.getScreen()+"#"+m_p.getMovie_name());
		m_p.setTheater_name(adminService.getAdminById((String)request.getSession().getAttribute("admin_username")).getTheatre_name());
		moviesplayingService.addMovie(m_p);
		mv.addObject("MESSAGE", "Movie Added to playing list Successfully!");
		mv.setViewName("playmovieonscreen");
		return mv;
	}
	
	@GetMapping("/logout")
	public String logoutSession(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}
	
	@PostMapping("/checkuserlogin")
	public String checkuserlogin(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = UserService.checkuserlogin(username, password);
		if(user!=null) {
			session.setAttribute("username", username);
			return "redirect:/home";
		}
		else {
			mv.addObject("MESSAGE", "Incorrect Credentials");
			return "redirect:/login";
		}
	}
	
	@PostMapping("/checkadminlogin")
	public String checkadminlogin(HttpServletRequest request, HttpSession session) {
		String admin_username = request.getParameter("admin_username");
		String admin_password = request.getParameter("admin_password");
		
		Admin admin = adminService.checkadminlogin(admin_username, admin_password);
		
		if(admin!=null) {
			session.setAttribute("admin_username", admin_username);
			return "redirect:/adminhome";
		}
		else {
			return "redirect:/adminlogin";
		}
		
	}
	
	@PostMapping("/addUser")
	public ModelAndView addUser(@ModelAttribute("user") User user) {
		UserService.addUser(user);
		ModelAndView mv = new ModelAndView("/register");
		mv.addObject("MESSAGE", "User Registered Successfully!");
		return mv;
	}
	
	@PostMapping("/adminhome/addScreen")
	public ModelAndView addScreen(@ModelAttribute("screen") Screen screen) {
		screen.setScreen_id(screen.getAdmin_username()+"#"+screen.getScreen_number());
		screenService.addScreen(screen);
		ModelAndView mv = new ModelAndView("addscreen");
		mv.addObject("MESSAGE", "Screen Added Successfully");
		return mv;
	}
	
	@GetMapping("/adminhome/addNewScreen")
	public String addNewScreenpage() {
		return "addscreen";
	}
	
	public JSONObject getIntheaters() {
		try {
			//URL url = new URL("https://imdb-api.com/en/API/InTheaters/k_m1dxqkws");
			//Shafi
			URL url = new URL("https://imdb-api.com/en/API/InTheaters/k_fb0s83o4");
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			conn.setRequestMethod("GET");
			conn.connect();
			String jsonstring = "";
			if(conn.getResponseCode() == 200) {
				Scanner scan = new Scanner(url.openStream());
				while(scan.hasNext()) {
					jsonstring+=scan.nextLine();
                }
            }
			JSONObject data_obj = new JSONObject(jsonstring);
			return data_obj;
			
		}catch(Exception e) {
			return null;
		}
	}
	
	@GetMapping("/loadMoviesToDB")
	public String loadMoviesToDB() {
		JSONArray obj = getIntheaters().getJSONArray("items");
		System.out.println(obj.toString());
		movieService.deleteAllIntheaters();
		for(int i=0;i<obj.length();i++) {
			JSONObject temp = obj.getJSONObject(i);
			Movie movie = new Movie();
			movie.setName(temp.getString("title"));
			movie.setImage(temp.getString("image"));
			movie.setDirectors(temp.getString("directors"));
			movie.setGenres(temp.getString("genres"));
			movie.setRuntimeStr(temp.getString("runtimeStr"));
			movie.setYear(temp.getString("year"));
			movie.setPlot(temp.getString("plot"));
			movie.setLanguages("Telugu, Hindi, English, Tamil, Malayalam, Kannada.");
			movieService.addMovie(movie);
			
		}
		return "redirect:/";
	}
	
	@GetMapping("/Movie")
	public ModelAndView get_movie_details(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("username") != null) {
			String movie_name = request.getParameter("movie_name");
			Movie movie = movieService.get_Movie_Details(movie_name);
			mv.addObject("MOVIE", movie);
			List<MoviesPlayingInT> l = moviesplayingService.getMoviesPlayingById(movie_name);
			System.out.println(l.toString());
			ArrayList<String> languages_of_moviesplaying = new ArrayList<>();
			for(MoviesPlayingInT x: l) {
				if(languages_of_moviesplaying.contains(x.getLanguage()))
					continue;
				languages_of_moviesplaying.add(x.getLanguage());
			}
			mv.addObject("moviesplaying", l);
			mv.addObject("languages", languages_of_moviesplaying);
			mv.setViewName("movie");
			return mv;
		}
		else {
			mv.setViewName("login");
			return mv;
		}
	}
	
	@GetMapping("/ScreenPreview")
	public ModelAndView getScreenPreview(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("admin_username")!=null) {
			mv.setViewName("screenpreview");
			Screen screen = screenService.screenById(request.getParameter("screen_id"));
			mv.addObject("screen_id", screen.getScreen_id());
			mv.addObject("TotalRows", screen.getTotal_rows());
			mv.addObject("HALFROWS", screen.getTotal_rows()/2);
			mv.addObject("HALFSEATS", screen.getTotal_columns()/2);
			mv.addObject("TotalColumns", screen.getTotal_columns());
			mv.addObject("TotalSeats", screen.getTotal_columns()*screen.getTotal_rows());
			return mv;
		}
		else {
			return mv;
		}
	}
	
	@GetMapping("/Book")
	public ModelAndView Select_Seats(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		if(request.getSession().getAttribute("username")!=null) {
			String movie_name=request.getParameter("movie_name");
			String theater_name = request.getParameter("theater_name");
			String theater_username = request.getParameter("theater_username");
			String time = request.getParameter("time");
			String language = request.getParameter("language");
			int screen_number = Integer.parseInt(request.getParameter("screen_number"));
			mv.addObject("movie_name", movie_name);
			mv.addObject("theater_name", theater_name);
			mv.addObject("time", time);
			mv.addObject("language", language);
			mv.addObject("screen_number", screen_number);
			mv.addObject("theater_username", theater_username);
			mv.setViewName("booking_seats");
			mv.addObject("movie_date", request.getParameter("movie_date"));
			mv.addObject("movie_duration", request.getParameter("movie_duration"));
			Screen screen = screenService.screenById(theater_username+"#"+screen_number);
			mv.addObject("screen_id", screen.getScreen_id());
			mv.addObject("TotalRows", screen.getTotal_rows());
			mv.addObject("HALFROWS", screen.getTotal_rows()/2);
			mv.addObject("HALFSEATS", screen.getTotal_columns()/2);
			mv.addObject("TotalColumns", screen.getTotal_columns());
			mv.addObject("TotalSeats", screen.getTotal_columns()*screen.getTotal_rows());
			return mv;
			//return "booking_seats";
		}
		else {
			mv.setViewName("login");
			return mv;
			//return "redirect:/login";
		}
	}
	
	@GetMapping("/bookseats")
	public ModelAndView bookseats(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String username = request.getParameter("username");
		String movie_name = request.getParameter("movie_name");
		String time = request.getParameter("time");
		String language= request.getParameter("language");
		int screen_number = Integer.parseInt(request.getParameter("screen_number"));
		String theater_username = request.getParameter("theater_username");
		String movie_date= request.getParameter("movie_date");
		String[] seats_ = request.getParameterValues("seat_");
		String seats_booked = Arrays.toString(seats_);
		if(request.getSession().getAttribute("username")!=null) {
			final String DB_URL = "jdbc:mysql://localhost:3306/practice";
			final String USER = "root";
			final String PASS = "root";
			try (Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
					){
				PreparedStatement statement = con.prepareStatement("insert into bookings values (?,?,?,?,?,?,?,?);");
				statement.setString(1, username);
				statement.setString(2, movie_name);
				statement.setString(3, time);
				statement.setString(4, language);
				statement.setInt(5, screen_number);
				statement.setString(6, theater_username);
				statement.setString(7, movie_date);
				statement.setString(8, seats_booked);
				statement.execute();
				mv.setViewName("booking_success");
				mv.addObject("success_message", "Seats booked successfully");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return mv;
		}
		else {
			mv.setViewName("login");
			return mv;
		}
	}
	
}
