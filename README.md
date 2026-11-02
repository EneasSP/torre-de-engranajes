# Torre de Engranajes

Juego de doble pantalla LCD al estilo de las consolas de bolsillo de los 80. Se juega en el navegador y, en el celular, muestra los botones en pantalla.

**Jugar:** https://eneassp.github.io/torre-de-engranajes/

## Cómo se juega
Subí la torre esquivando los engranajes que tira el robot y bajá la palanca de arriba a la izquierda para apagarlo. Cada nivel es más rápido. Ojo con las escaleras: a veces los engranajes bajan rodando por ellas y te pueden pegar mientras subís. Cada tanto aparece una llave inglesa flotando: saltá justo debajo para agarrarla y ganar puntos extra (antes de que desaparezca). Con 3 fallos se termina el juego.

- Celular: cruceta, botón rojo SALTAR, JUEGO A / JUEGO B / HORA.
- Salto con dirección: mantené izquierda o derecha y apretá SALTAR para caer un casillero más allá.
- Robots: en cada nivel cambia el robot. El clásico tira engranajes de a uno, el doble los tira de a dos y el astuto los hace bajar casi siempre por las escaleras.
- Ranking: si tu puntaje entra en los 5 mejores, ponés tus 3 iniciales (flechas para elegir letra, SALTAR para confirmar; en la compu también podés escribirlas).
- Teclado: flechas o WASD para moverse, Espacio para saltar, 1 = Juego A, 2 = Juego B, H = hora, M = sonido.

## Archivos
- `torre-de-engranajes.html`: el juego (fuente).
- `index.html`: página completa para GitHub Pages, generada por `build.ps1`.
- `build.ps1`: regenera `index.html` y el `.zip` completo en `dist/`.
- `VERSION`: versión actual.

## Nueva versión
1. Cambiar `VERSION`.
2. `powershell -ExecutionPolicy Bypass -File build.ps1`
3. Commit, push y una release en GitHub con el `.zip` de `dist/`.
