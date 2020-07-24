# Form/Window View - Generated Source Code File 
# Generated by the Ring 1.10 Form Designer
# Date : 05/02/2019
# Time : 10:38:24

Load "stdlibcore.ring"
Load "guilib.ring"

import System.GUI

if IsMainSourceFile() { 
	new App {
		StyleFusion()
		new frmHelloView { win.show() } 
		exec()
	}
}

class frmHelloView from WindowsViewParent
	win = new MainWindow() { 
		move(9,21)
		resize(403,375)
		setWindowTitle("Say Hello")
		setstylesheet("background-color:#00aaff;") 

		setWinIcon(win,"myIcon.ico") 
		Label1 = new label(win) {
			move(11,21)
			resize(119,36)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,75,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("Name:")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		txtName = new lineedit(win) {
			move(95,23)
			resize(280,34)
			setstylesheet("color:#55007f;background-color:white;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,75,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("")
			setTextChangedEvent("")
			setcursorPositionChangedEvent("")
			seteditingFinishedEvent("")
			setreturnPressedEvent("")
			setselectionChangedEvent("")
			settextEditedEvent("")
			
		}
		Button1 = new pushbutton(win) {
			move(11,88)
			resize(373,43)
			setstylesheet("color:#00007f;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,75,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("Say Hello")
			setClickEvent(Method(:sayHello))
			setBtnImage(Button1,"")
			
		}
		lblMsg = new label(win) {
			move(9,164)
			resize(376,48)
			setstylesheet("color:#00007f;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,16,-1,5,75,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("")
			setAlignment(Qt_AlignLeft |  Qt_AlignVCenter)
		}
		btnCenter = new pushbutton(win) {
			move(78,288)
			resize(229,38)
			setstylesheet("color:black;background-color:;")
			oFont = new qfont("",0,0,0)
			oFont.fromstring("MS Shell Dlg 2,20,-1,5,50,0,0,0,0,0")
			setfont(oFont)
			oFont.delete()
			setText("Center Now")
			setClickEvent(Method(:myCenter))
			setBtnImage(btnCenter,"")
			
		}
	}

# End of the Generated Source Code File...