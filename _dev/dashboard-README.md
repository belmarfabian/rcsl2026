# Dashboard de inscripciones RCSL 2026

Página interna en `dashboard.html`. Lee un Google Sheets publicado como CSV y muestra contador en vivo de pagos y vouchers.

## Setup en 4 pasos

### 1. Crear el Google Sheets

Hoja con esta cabecera (orden libre, los nombres se reconocen case-insensitive):

| nombre | email | pais | categoria | pagado | voucher | fecha_pago | monto | notas |
|--------|-------|------|-----------|--------|---------|------------|-------|-------|

- `pagado`: `sí` cuando Rodrigo recibe el comprobante de pago
- `voucher`: `sí` cuando la persona sube el voucher al formulario
- `categoria`: full / waged / unwaged / student / etc.
- valores aceptados como "sí": `sí`, `si`, `yes`, `y`, `true`, `1`, `x`, `✓`

Sugerencia: pre-cargar el sheet con la lista de aceptados (desde `insumos/Aceptados.xlsx`) para que el "Aceptados" del dashboard muestre el total real.

### 2. Publicar como CSV

En el sheet:
1. **Archivo → Compartir → Publicar en la web**
2. Pestaña **Vincular**: seleccionar la hoja correcta y formato **Valores separados por comas (.csv)**
3. Activar "Volver a publicar automáticamente cuando se realicen cambios"
4. Copiar la URL (termina en `output=csv`)

### 3. Pegar URL en `dashboard.html`

Abrir `dashboard.html` y editar la línea:

```js
const SHEET_CSV_URL = "https://docs.google.com/spreadsheets/d/e/.../pub?gid=0&single=true&output=csv";
```

### 4. Acceder

Local: abrir el archivo en el navegador (`file://`).

Producción (cuando se haga commit a la web): `https://rcsl2026.udp.cl/_dev/dashboard.html`. La página tiene `noindex` para que Google no la liste, pero la URL es pública para quien la conozca. Si querés más privacidad: mover a un repo privado o agregar password básico.

## Funcionalidad

- 5 tarjetas: aceptados, completos, pagados sin voucher, vouchers sin pago, pendientes
- Barra de progreso segmentada
- Tabla con búsqueda, filtro por estado y categoría, ordenamiento por columna
- Auto-refresh cada 2 min + botón "recargar"

## Cambiar nombres de columna

Si tu sheet usa otros nombres, editá el objeto `COLS` en `dashboard.html`:

```js
const COLS = {
  nombre: ['nombre', 'name', 'full_name'],
  ...
};
```

Cada campo acepta varios alias.

## Limitaciones

- Los datos viajan por la red de Google con la URL publicada — no incluyas info sensible (RUT, datos bancarios) en columnas que no necesite el dashboard
- El refresh de Google al CSV publicado puede tardar 1-5 min en reflejar cambios del sheet
