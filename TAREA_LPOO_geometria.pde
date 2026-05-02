int cant = 50;
int sepx, sepy;

void setup() {
  size(800, 800);
  sepx = width/cant;
  sepy = height/cant;
}

void draw() {
  background(255);
  stroke(0);
  
  for (int i = 0; i < cant; i++) {
    
    // 1. Vertice Inferior Izquierdo (Linea Base)
    line(0, i * sepy, i * sepx, height);
    
    // 2. Vertice Superior Derecho
    // El punto arranca a la derecha y vuelve hacia la izquierda
    line(width, i * sepy, width - (i * sepx), 0);
    
    // 3. Vertice Inferior Derecho
    // Aca los puntos salen de la derecha y suben desde el piso digamos o suelo
    line(width, height - (i * sepy), width - (i * sepx), height);
    
    // 4. Vertice Superior Izquierdo
    // Sale de la izquierda y sube hacia arriba
    line(0, height - (i * sepy), i * sepx, 0);
  }
}
