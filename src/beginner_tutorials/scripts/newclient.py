#!/usr/bin/env python
# Software License Agreement (BSD License)
#
# Copyright (c) 2008, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of Willow Garage, Inc. nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Revision $Id$

## Simple demo of a rospy service client that calls a service to add
## two integers.

import sys
import os

import rospy

# imports the AddTwoInts service
from beginner_tutorials.srv import SendMessage


## add two numbers using the add_two_ints service
## @param x int: first number to add
## @param y int: second number to add
def add_two_ints_client(x):
    # NOTE: you don't have to call rospy.init_node() to make calls against
    # a service. This is because service clients do not have to be
    # nodes.

    # block until the add_two_ints service is available
    # you can optionally specify a timeout
    rospy.wait_for_service('send_message')

    try:
        # create a handle to the add_two_ints service
        send_message = rospy.ServiceProxy('send_message', SendMessage)

        print ("Requesting %s" % (x))

        # simplified style
        resp1 = send_message(x)
        print(resp1)

        # formal style
        # resp2 = add_two_ints.call(AddTwoIntsRequest(x, y))

        # if not resp1.sum == (x + y):
        #     raise Exception("test failure, returned sum was %s" % resp1.sum)
        # if not resp2.sum == (x + y):
        #     raise Exception("test failure, returned sum was %s" % resp2.sum)
        return resp1
    except rospy.ServiceException, e:
        print ("Service call failed: %s" % e)

#
# def usage():
#     return ("%s [x]") % sys.argv[0]
#

if __name__ == "__main__":


    # argv = rospy.myargv()
    # if len(argv) == 1:
    #     import random
    #
    # x = str
    # elif len(argv) == 3:
    #     try:
    # x = str(argv[1])
    #     except:
    #         print usage()
    #         sys.exit(1)
    # else:
    #     print usage()
    #     sys.exit(1)
    x= str(raw_input("enter the message "))
    add_two_ints_client(x)