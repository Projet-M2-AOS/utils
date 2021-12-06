GREEN=$'\e[0;32m'
RED=$'\e[0;31m'
NC=$'\e[0m'

echo "${GREEN}Downloading repos...\n"

echo "${GREEN}Downloading micro-rating..."
git clone https://github.com/Projet-M2-AOS/micro-rating.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-rating downloaded !\n"
else
    echo "${RED}Micro-rating download failed !\n"
fi

echo "${GREEN}Downloading micro-order..."
git clone https://github.com/Projet-M2-AOS/micro-order.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-order downloaded !\n"
else
    echo "${RED}Micro-order download failed !\n"
fi

echo "${GREEN}Downloading micro-user..."
git clone https://github.com/Projet-M2-AOS/micro-user.git  2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-user downloaded !\n"
else
    echo "${RED}Micro-user download failed !\n"
fi

echo "${GREEN}Downloading micro-products..."
git clone https://github.com/Projet-M2-AOS/micro-products.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-products downloaded !\n"
else
    echo "${RED}Micro-products download failed !\n"
fi

echo "Downloading micro-product-list"
git clone https://github.com/Projet-M2-AOS/micro-product-lists.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-product-list downloaded !\n"
else
    echo "${RED}Micro-product-list download failed !\n"
fi

echo "Downloading micro-comments"
git clone https://github.com/Projet-M2-AOS/micro-comments.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-comments downloaded !\n"
else
    echo "${RED}Micro-comments download failed !\n"
fi

echo "${GREEN}Repos downloaded !"