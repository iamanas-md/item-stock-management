package com.anas.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anas.data.ItemDAOImpl;
import com.anas.model.Item;
import com.sun.crypto.provider.RSACipher;

/**
 * Servlet implementation class Item_Controller
 */
@WebServlet("/ItemController")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    ItemDAOImpl itemUtil = null;
    
    public ItemController() {
    	
        super();
       itemUtil = new ItemDAOImpl();
    }

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String command = request.getParameter("command");
			
			if (command == null) {
				
				command = "LIST";
				
			}
			switch(command) {
			
			case "LIST":
			listItems(request,response);
			break;
		
			case "ADD":
				addItem(request,response);
				break;
				
			case "LOAD":
				loadItem(request, response);
				break;
			case "UPDATE":
				updateItem(request, response);
				break;
			case "DELETE":
				deleteItem(request, response);
				break;
			case "SEARCH":
				searchItem(request, response);
				break;
			default:
					listItems(request, response);
					break;
		}
		}
		
		catch (Exception e) {
			throw new ServletException(e);
			//System.out.println(e.getMessage());
		}
			
		}
			
			private void searchItem(HttpServletRequest request, HttpServletResponse response) throws Exception {
				String searchName = request.getParameter("searchName").trim();
				List<Item> items = itemUtil.searchItem(searchName);
				request.setAttribute("item_list", items);
				
				RequestDispatcher rd = request.getRequestDispatcher("list-items.jsp");
				rd.forward(request, response);
				
				
				
				listItems(request, response);    //Send back to main page(the item list)
	}
			

			private void deleteItem(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int itemCode = Integer.parseInt(request.getParameter("itemCode"));
		
		itemUtil.deleteItem(itemCode);
		listItems(request, response);   //Send back to the main page (list item)
		
		
		
	}

			private void updateItem(HttpServletRequest request, HttpServletResponse response) throws Exception  {
		int itemCode = Integer.parseInt(request.getParameter("itemCode"));
		String itemName = request.getParameter("itemName");
		String unit = request.getParameter("unit");
		int beginningInventory = Integer.parseInt(request.getParameter("beginningInventory"));
		int quantityOnHand = Integer.parseInt(request.getParameter("quantityOnHand"));
		double pricePerUnit  = Double.parseDouble(request.getParameter("pricePerUnit"));
		String dateOfManufacture = request.getParameter("dateOfManufacture");
		String dateOfExpiry = request.getParameter("dateOfExpiry");
		String location = request.getParameter("location");
		String itemCategory = request.getParameter("itemCategory");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date dom =new Date();
		dom = sdf.parse(dateOfManufacture);
		
		Date doe= new Date();
		doe = sdf.parse(dateOfExpiry);
		
		Item item = new Item(itemCode, itemName, unit, beginningInventory, quantityOnHand, pricePerUnit, dom, doe, location, itemCategory); 
			
			itemUtil.updateItem(item);
			listItems(request, response);   //Send back to the main page (list item)
			}	
	

			private void loadItem(HttpServletRequest request, HttpServletResponse response) throws Exception {
			int itemCode = Integer.parseInt(request.getParameter("itemCode"));
			Item item = itemUtil.getItem(itemCode);
			request.setAttribute("ITEM", item);
			RequestDispatcher rd = request.getRequestDispatcher("update-item-form.jsp");
			rd.forward(request, response);
	}
			private void addItem(HttpServletRequest request, HttpServletResponse response) throws Exception {
				String itemName = request.getParameter("itemName");
				String unit = request.getParameter("unit");
				int beginningInventory = Integer.parseInt(request.getParameter("beginningInventory"));
				int quantityOnHand = Integer.parseInt(request.getParameter("quantityOnHand"));
				double pricePerUnit  = Double.parseDouble(request.getParameter("pricePerUnit"));
				String dateOfManufacture = request.getParameter("dateOfManufacture");
				String dateOfExpiry = request.getParameter("dateOfExpiry");
				String location = request.getParameter("location");
				String itemCategory = request.getParameter("itemCategory");
				
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date dom =new Date();
				dom = sdf.parse(dateOfManufacture);
				
				Date doe= new Date();
				doe = sdf.parse(dateOfExpiry);
				
				Item item = new Item(itemName, unit, beginningInventory, quantityOnHand, pricePerUnit, dom, doe, location, itemCategory);
				
				itemUtil.addItem(item);
				
				
				listItems(request, response);    //Send back to main page(the item list)
	}

			private void listItems(HttpServletRequest request, HttpServletResponse response)throws Exception {
			List<Item> items = itemUtil.getItems();
			request.setAttribute("item_list", items);
			
			RequestDispatcher rd = request.getRequestDispatcher("list-items.jsp");
			rd.forward(request, response);
			
		
	}

			/*List<Item> item = itemUtil.getItems();
			System.out.println(item);
			
		}
		catch (Exception e)  {
			throw new ServletException(e);
		}
	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
