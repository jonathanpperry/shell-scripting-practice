ontinue=n
echo -n "Do you really want to continue? (y/n) " 
read doContinue

if [ "$doContinue" != "y" ]; then
      echo "Quitting..."
      exit
fi

