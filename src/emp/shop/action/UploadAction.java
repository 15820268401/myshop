package emp.shop.action;

import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import emp.shop.form.UploadForm;

public class UploadAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		UploadForm uf  = (UploadForm)form;
		
		FormFile formfile = uf.getFormFile();
		if(formfile != null) {

			FileOutputStream fos = 
				new FileOutputStream("D:/Procedure/JavaProject/workspace6.5/myshop/WebRoot/picture/"+formfile.getFileName());
			fos.write(formfile.getFileData());
			fos.flush();
			fos.close();
		}
		
		return mapping.findForward("success");
	}

}
