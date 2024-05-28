echo "FROM python " > dockerfile

echo "RUN apt-get -y install pyhton3-pip " >> dockerfile

echo "RUN pip install flask" >> dockerfile

echo "COPY index.html /home/ev2/templates" >> dockerfile 

echo "COPY app.py /home/ev2" >> dockerfile

echo "EXPOSE 5040" >> dockerfile


docker build -t  apache2 .

docker run -d -p 5040:5040  apache2 apache2
