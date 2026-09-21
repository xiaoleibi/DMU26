
    class MetodE {

  static void udskrivArray( int[] array ) {
    for ( int i=0; i<array.length; i++ )
      System.out.print( array[i] + " " );
    System.out.println();
  }

  public static void main( String[] argv ) {
    int[] primtal = { 2, 3, 5, 7, 11, 13, 17, 19, 23 };

    udskrivArray( primtal );
  }
}