.class public final synthetic La5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/m;


# instance fields
.field public final a:Lv3/m;


# direct methods
.method public constructor <init>(Lv3/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/j;->a:Lv3/m;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La5/j;->a:Lv3/m;

    check-cast p1, Lk4/l;

    check-cast p2, Lj5/j;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lv3/m;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p2, p1}, Lj5/j;->d(Ljava/lang/Exception;)Z

    return-void
.end method
