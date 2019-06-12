#ifndef _ROS_controller_raw_controller_h
#define _ROS_controller_raw_controller_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace controller
{

  class raw_controller : public ros::Msg
  {
    public:
      typedef int8_t _RX_type;
      _RX_type RX;
      typedef int8_t _RY_type;
      _RY_type RY;
      typedef int8_t _LX_type;
      _LX_type LX;
      typedef int8_t _LY_type;
      _LY_type LY;

    raw_controller():
      RX(0),
      RY(0),
      LX(0),
      LY(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        int8_t real;
        uint8_t base;
      } u_RX;
      u_RX.real = this->RX;
      *(outbuffer + offset + 0) = (u_RX.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->RX);
      union {
        int8_t real;
        uint8_t base;
      } u_RY;
      u_RY.real = this->RY;
      *(outbuffer + offset + 0) = (u_RY.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->RY);
      union {
        int8_t real;
        uint8_t base;
      } u_LX;
      u_LX.real = this->LX;
      *(outbuffer + offset + 0) = (u_LX.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->LX);
      union {
        int8_t real;
        uint8_t base;
      } u_LY;
      u_LY.real = this->LY;
      *(outbuffer + offset + 0) = (u_LY.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->LY);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        int8_t real;
        uint8_t base;
      } u_RX;
      u_RX.base = 0;
      u_RX.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->RX = u_RX.real;
      offset += sizeof(this->RX);
      union {
        int8_t real;
        uint8_t base;
      } u_RY;
      u_RY.base = 0;
      u_RY.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->RY = u_RY.real;
      offset += sizeof(this->RY);
      union {
        int8_t real;
        uint8_t base;
      } u_LX;
      u_LX.base = 0;
      u_LX.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->LX = u_LX.real;
      offset += sizeof(this->LX);
      union {
        int8_t real;
        uint8_t base;
      } u_LY;
      u_LY.base = 0;
      u_LY.base |= ((uint8_t) (*(inbuffer + offset + 0))) << (8 * 0);
      this->LY = u_LY.real;
      offset += sizeof(this->LY);
     return offset;
    }

    const char * getType(){ return "controller/raw_controller"; };
    const char * getMD5(){ return "261f1b7f011b5fc47b397e357aa3b674"; };

  };

}
#endif
