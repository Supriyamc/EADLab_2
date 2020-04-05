import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ColspanRowspan
 */
@WebServlet("/ColspanRowspan")
public class ColspanRowspan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ColspanRowspan() {
        super();
        // TODO Auto-generated constructor stub
    }
    public static final String DEST = "C:/colspan_rowspan.pdf";
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		File file = new File(DEST);
        file.getParentFile().mkdirs();
        try {
			new ColspanRowspan().createPdf(DEST);
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void createPdf(String dest) throws IOException, DocumentException {
        Document document = new Document();
        PdfWriter.getInstance(document, new FileOutputStream(dest));
        document.open();
        PdfPTable table = new PdfPTable(4);
        PdfPCell cell = new PdfPCell(new Phrase(" 1,1 "));
        table.addCell(cell);
        cell = new PdfPCell(new Phrase(" 1,2 "));
        table.addCell(cell);
        PdfPCell cell23 = new PdfPCell(new Phrase("multi 1,3 and 1,4"));
        cell23.setColspan(2);
        cell23.setRowspan(2);
        table.addCell(cell23);
        cell = new PdfPCell(new Phrase(" 2,1 "));
        table.addCell(cell);
        cell = new PdfPCell(new Phrase(" 2,2 "));
        table.addCell(cell);
        document.add(table);
        document.close();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
