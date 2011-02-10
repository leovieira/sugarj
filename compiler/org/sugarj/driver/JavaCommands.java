package org.sugarj.driver;

import java.io.IOException;
import java.util.List;

/**
 * 
 * Provides methods related to processing Java. Mainly, we provide
 * a method for compiling Java code.
 * 
 * @author Sebastian Erdweg <seba at informatik uni-marburg de>
 *
 */
public class JavaCommands {

  private final static String JAVAC = "javac";
  
  public static void javac(String java, String dir, List<String> cp) throws IOException {
    javac(java, dir, cp.toArray(new String[] {}));
  }

  public static void javac(String java, String dir, String... cp) throws IOException {
    StringBuilder cpBuilder = new StringBuilder();
    
    for (int i = 0; i < cp.length; i++) {
      cpBuilder.append(FileCommands.toWindowsPath(cp[i]));
      
      if (i < cp.length - 1)
        cpBuilder.append(Environment.classpathsep);
    }
    
    String[] cmd = new String[] {
        JAVAC,
        "-cp", cpBuilder.toString(),
        "-d", FileCommands.toWindowsPath(dir),
        FileCommands.toWindowsPath(java)
    };
    
    CommandExecution.execute(cmd);
  }

  /**
   * Runs a compiled java program, linking against  {@code strategoxt.jar},
   * and providing a bunch of parameters. 
   */
  public static void java(String dir, String main, String... args) throws IOException {
    StringBuilder classpath = new StringBuilder();
    classpath.append(FileCommands.toWindowsPath(dir));
    classpath.append(Environment.classpathsep);
    classpath.append(FileCommands.toWindowsPath(Environment.strategoxt_jar));
    
    String[] cmd = new String[args.length + 5];
    cmd[0] = "java";
    cmd[1] = "-Xss4M";
    cmd[2] = "-cp";
    cmd[3] = classpath.toString();
    cmd[4] = main;
    
    for (int i = 0; i < args.length; i++)
      cmd[i + 5] = args[i];
    
    CommandExecution.executeWithPrefix(main, cmd);
  }
  
}