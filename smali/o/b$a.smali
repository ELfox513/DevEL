.class public Lo/b$a;
.super La/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/b;->b(Lo/a;)Lo/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public final synthetic b:Lo/b;


# direct methods
.method public constructor <init>(Lo/b;Lo/a;)V
    .locals 0

    iput-object p1, p0, Lo/b$a;->b:Lo/b;

    invoke-direct {p0}, La/a$a;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/b$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public A4(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public I6(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public f5(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public n6(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public z6(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
