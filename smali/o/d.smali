.class public abstract Lo/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/ComponentName;Lo/b;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Lo/d$a;

    invoke-static {p2}, La/b$a;->j0(Landroid/os/IBinder;)La/b;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lo/d$a;-><init>(Lo/d;La/b;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1, v0}, Lo/d;->a(Landroid/content/ComponentName;Lo/b;)V

    return-void
.end method
