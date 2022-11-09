#ifndef FLUTTER_MY_APPLICATION_H_
#define FLUTTER_MY_APPLICATION_H_

#include <gtk/gtk.h>

G_DECLARE_FINAL_TYPE(MyApplication, my_application, MY, APPLICATION,
                     GtkApplication)

/**
 * my_application_:
 *
 * Creates a  Flutter-based application.
 *
 * Returns: a  #MyApplication.
 */
MyApplication* my_application_();

#endif  // FLUTTER_MY_APPLICATION_H_
