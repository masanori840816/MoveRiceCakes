//
//  PlayApp.mm
//  MoveRiceCakes
//
//  Created by masuimasanori on 2014/01/04.
//
//

#include "PlayApp.h"

void PlayApp::setup() {
	ofSetLogLevel(OF_LOG_VERBOSE);
    ofBackground(50, 0);
    
    ofDisableArbTex(); // we need GL_TEXTURE_2D for our models coords.
    
	glEnable(GL_DEPTH_TEST);
    
    glShadeModel(GL_SMOOTH); //some model / light stuff
    light.enable();
    ofEnableSeparateSpecularLight();

    loadModel();
}
void PlayApp::loadModel() {
    ofPoint modelPosition(ofGetWidth() / 2, (float)ofGetHeight() * 0.75 , 0);
    model.loadModel("ricecakes.3ds");
    model.setPosition(modelPosition.x, modelPosition.y, modelPosition.z);
    ofDisableSeparateSpecularLight();
}
void PlayApp::update(){

}

//--------------------------------------------------------------
void PlayApp::draw() {
    ofSetColor(255);
    ofEnableAlphaBlending();
    
	glEnable(GL_DEPTH_TEST);
    ofPushMatrix();
    ofTranslate(model.getPosition().x, model.getPosition().y, 0);
    ofRotate(-mouseX, 0, 1, 0);
    ofTranslate(-model.getPosition().x, -model.getPosition().y, 0);
    model.drawFaces();
    ofPopMatrix();
}

//--------------------------------------------------------------
void PlayApp::exit() {
    //
}

//--------------------------------------------------------------
void PlayApp::touchDown(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void PlayApp::touchMoved(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void PlayApp::touchUp(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void PlayApp::touchDoubleTap(ofTouchEventArgs &touch){

}

//--------------------------------------------------------------
void PlayApp::lostFocus(){

}

//--------------------------------------------------------------
void PlayApp::gotFocus(){

}

//--------------------------------------------------------------
void PlayApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void PlayApp::deviceOrientationChanged(int newOrientation){

}


//--------------------------------------------------------------
void PlayApp::touchCancelled(ofTouchEventArgs& args){

}

