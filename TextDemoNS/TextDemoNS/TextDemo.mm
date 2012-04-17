
//#include <iostream>
#include "TextDemo.hpp"
#include "Utils.hpp" 
#include "NSGLView.h"
#include "AppDelegate.h"
//#include "arial-16.h"
//#include "Vera-36.h" 
#include "FontAtlas.hpp"

//#import <Carbon/Carbon.h> //needed for key event codes


TextDemo::TextDemo() : Renderer() {
  
}

void TextDemo::Initialize() {
  SetCamera(new Camera(ivec4(0, 0, width, height)));
  CreateFullScreenRect();
  fullScreenRect->Transform();
  BindDefaultFrameBuffer();
  
}




void TextDemo::Render() { 
  
  
  bool cameraMoved = false;
  if (camera->IsTransformed()) {
    camera->Transform();
    cameraMoved = true;
  }
  
  BindDefaultFrameBuffer();
  
  
  FontAtlas* font = GetFont("Univers128");
  font->Bind(); {
    Text(0, 100, "abcdefægh", vec4(1.0,1.0,0.0,0.5), true );
  } font->Unbind();
  
  font = GetFont("CMUSerifUprightItalic60");
  font->Bind(); {
    Text(0, 100, "abcdefægh", vec4(1.0,1.0,0.0,0.5), true );
  } font->Unbind();
  
}


