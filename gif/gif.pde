{\rtf1\ansi\ansicpg1252\cocoartf1348\cocoasubrtf170
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 int numFrames = 22;\
int currentFrame = 0;\
PImage[] images = new PImage[numFrames];\
    \
void setup() \{\
  size(594, 331);\
  frameRate(40);\
\
  for (int i = 1; i < numFrames; i++) \{\
  String pic = "gif" + nf(i, 1) + ".png";\
  images[i] = loadImage(pic);\
  \}\
\} \
 \
void draw() \{ \
  background(0);\
  currentFrame = (currentFrame+1) % 21;\
  for (int i = 1; i < 22; i++) \{ \
    image(images[currentFrame+1], 0,0, images[i].width/4,images[i].height/4);\
  \}\
\}}