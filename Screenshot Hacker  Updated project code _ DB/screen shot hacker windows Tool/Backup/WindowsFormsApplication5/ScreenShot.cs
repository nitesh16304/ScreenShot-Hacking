#region Class Imports 
using System;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using System.ComponentModel;
using System.Drawing.Imaging;
#endregion
//*****************************************************************************************
//                           LICENSE INFORMATION
//*****************************************************************************************
//   PC_Screenshot Version 1.0.0.0
//   Class file for taking screenshots via code
//
//   Copyright (C) 2007  
//   Richard L. McCutchen 
//   Email: richard@psychocoder.net
//   Created: 09SEP07
//
//   This program is free software: you can redistribute it and/or modify
//   it under the terms of the GNU General Public License as published by
//   the Free Software Foundation, either version 3 of the License, or
//   (at your option) any later version.
//
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
//
//   You should have received a copy of the GNU General Public License
//   along with this program.  If not, see <http://www.gnu.org/licenses/>.
//*****************************************************************************************
namespace PC
{
    /// <summary>
    /// Class for taking a screen shot in code
    /// </summary>
    public class ScreenShot
    {
    /// <summary>
    /// Global variable declarations
    /// </summary>
    #region Global Variables
    private Bitmap _screenShot;
    protected static IntPtr newBMP;
    #endregion

    #region Constants
    public const int SRCCOPY = 13369376;
    public const int SCREEN_X = 0;
    public const int SCREEN_Y = 1;
    #endregion
    /// <summary>
    /// Hold the definition for the
    /// class properties
    /// </summary>
    #region Class Properties
    [Description("Gets the screenshot image")]
    public Bitmap ScreenImage
    {
        get { return _screenShot; }
    }
    #endregion

    #region Constructor
    /// <summary>
    /// Constructors for our class
    /// </summary>
    [Description("Empty constructor, instantiating _screenShot to nothing")]
    public ScreenShot()
    {
        _screenShot = null;
    }              
    #endregion

    #region Methods
    /// <summary>
    /// Method for creating an image of the current desktop
    /// </summary>
    /// <returns>A Bitmap image</returns>
    [Description("Creates an image of the current desktop")]
    public Bitmap GetScreen()
    {
        int xLoc;
        int yLoc;
        IntPtr dsk;
        IntPtr mem;
        Bitmap currentView;

        //get the handle of the desktop DC
        dsk = Win32API.GetDC(Win32API.GetDesktopWindow());

        //create memory DC
        mem = Win32API.CreateCompatibleDC(dsk);

        //get the X coordinates of the screen
        xLoc = Win32API.GetSystemMetrics(SCREEN_X);

        //get the Y coordinates of screen.
        yLoc = Win32API.GetSystemMetrics(SCREEN_Y);

        //create a compatible image the size of the desktop
        newBMP = Win32API.CreateCompatibleBitmap(dsk, xLoc, yLoc);

        //check against IntPtr (cant check IntPtr values against a null value)
        if (newBMP != IntPtr.Zero)
        {
            //select the image in memory
            IntPtr oldBmp = (IntPtr)Win32API.SelectObject(mem, newBMP);
            //copy the new bitmap into memory
            Win32API.BitBlt(mem, 0, 0, xLoc, yLoc, dsk, 0, 0, SRCCOPY);
            //select the old bitmap into memory
            Win32API.SelectObject(mem, oldBmp);
            //delete the memoryDC since we're through with it
            Win32API.DeleteDC(mem);
            //release dskTopDC to free up the resources
            Win32API.ReleaseDC(Win32API.GetDesktopWindow(), dsk);
            //create out BitMap
            currentView = Image.FromHbitmap(newBMP);
            //return the image
            return currentView;
        }
        else  //null value returned
        {
            return null;
        }    
    }
    #endregion

    #region Helpers
    [Description("Takes the information from GetScreen and creates a Bitmap image")]
    public void GetScreenShot(string folder, string name)
    {
        //check to see if the folder provided exists
        if (!Directory.Exists(Application.StartupPath + "\\" + folder))
        {
            //if it doesnt exist then we need to create it
            Directory.CreateDirectory(Application.StartupPath + "\\" + folder);
            
        }
        //set the ScreenImage Property to the
        //BitMap created in GetScreen()
        _screenShot = new Bitmap(GetScreen());
        //create a name based on the name passed in
        string ingName = Application.StartupPath + "\\" + folder + "\\" + name+".png" ;
        //save the image
        try
        {
            _screenShot.Save(ingName, ImageFormat.Png);
        }
        catch (Exception ex)
        { 
        
        }
    }
    #endregion
    }

}
