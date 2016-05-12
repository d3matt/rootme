#include <linux/kernel.h>
#include <linux/types.h>
#include <linux/export.h>
#include <linux/kthread.h>

#include <linux/debugfs.h>
#include <linux/proc_fs.h>
#include <linux/uaccess.h>
#include <linux/cred.h>

#undef subsys_initcall
#define subsys_initcall module_init
#include "sunxi-debug.c"

static void __exit rootme_exit_module(void)
{
    remove_proc_entry("sunxi_debug/sunxi_debug", NULL);
    remove_proc_entry("sunxi_debug", NULL);
}


module_exit(rootme_exit_module);


MODULE_LICENSE("GPL");
MODULE_VERSION("1.0");
MODULE_AUTHOR("Matthew Stoltenberg <d3matt@gmail.com>");
