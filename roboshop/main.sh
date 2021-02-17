#!/bin/bash

case $1 in
  cart)       sh components/cart.sh ;;
  catalogue)  sh components/catalogue.sh ;;
  user)       sh components/user.sh ;;
  shipping)   sh components/shipping.sh ;;
  payment)    sh components/payment.sh ;;
  mongodb)    sh components/monogdb.sh ;;
  redis)      sh components/redis.sh ;;
  rabbitmq)   sh components/rabbitmq.sh ;;
  mysql)      sh components/mysql.sh ;;
  frontend)   sh components/frontend.sh ;;
  *)  echo -e "\e[1;31mUsage: Invalid Input\nInputs allowed are cart,catalogue,..........\e[0m"
      exit 1
      ;;
esac

