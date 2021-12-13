GREEN=$'\e[0;32m'
RED=$'\e[0;31m'
NC=$'\e[0m'

echo "${GREEN}Downloading repos...\n${NC}"

echo "${GREEN}Downloading micro-ratings...${NC}"
git clone https://github.com/Projet-M2-AOS/micro-ratings.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-ratings downloaded !\n${NC}"
else
    echo "${RED}Micro-ratings download failed !\n${NC}"
fi

echo "${GREEN}Downloading micro-orders...${NC}"
git clone https://github.com/Projet-M2-AOS/micro-orders.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-orders downloaded !\n${NC}"
else
    echo "${RED}Micro-orders download failed !\n${NC}"
fi

echo "${GREEN}Downloading micro-users...${NC}"
git clone https://github.com/Projet-M2-AOS/micro-users.git  2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-users downloaded !\n${NC}"
else
    echo "${RED}Micro-users download failed !\n${NC}"
fi

echo "${GREEN}Downloading micro-products...${NC}"
git clone https://github.com/Projet-M2-AOS/micro-products.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-products downloaded !\n${NC}"
else
    echo "${RED}Micro-products download failed !\n${NC}"
fi

echo "Downloading micro-product-lists${NC}"
git clone https://github.com/Projet-M2-AOS/micro-product-lists.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-product-lists downloaded !\n${NC}"
else
    echo "${RED}Micro-product-lists download failed !\n${NC}"
fi

echo "Downloading micro-comments${NC}"
git clone https://github.com/Projet-M2-AOS/micro-comments.git 2>&1> /dev/null
if [ $? -eq 0 ]; then
    echo "${GREEN}Micro-comments downloaded !\n${NC}"
else
    echo "${RED}Micro-comments download failed !\n${NC}"
fi

echo "${GREEN}Repos downloaded !${NC}"