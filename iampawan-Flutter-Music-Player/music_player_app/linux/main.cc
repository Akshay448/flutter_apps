#include "my_application.h"

int main(int argc, char** argv) {
  g_autoptr(MyApplication) app = my_application_();
  return g_application_run(G_APPLICATION(app), argc, argv);
}
