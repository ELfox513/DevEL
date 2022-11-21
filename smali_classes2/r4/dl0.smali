.class public final Lr4/dl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lr4/vm0;


# direct methods
.method public constructor <init>(Lr4/el0;Landroid/content/Context;Lr4/vm0;)V
    .locals 0

    iput-object p2, p0, Lr4/dl0;->a:Landroid/content/Context;

    iput-object p3, p0, Lr4/dl0;->b:Lr4/vm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/dl0;->a:Landroid/content/Context;

    invoke-static {v0}, Lw2/a;->b(Landroid/content/Context;)Lw2/a$a;

    move-result-object v0

    iget-object v1, p0, Lr4/dl0;->b:Lr4/vm0;

    invoke-virtual {v1, v0}, Lr4/vm0;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lt3/i; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    iget-object v1, p0, Lr4/dl0;->b:Lr4/vm0;

    invoke-virtual {v1, v0}, Lr4/vm0;->f(Ljava/lang/Throwable;)Z

    const-string v1, "Exception while getting advertising Id info"

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
