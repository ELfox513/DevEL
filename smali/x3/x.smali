.class public Lx3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/x$a;
    }
.end annotation


# static fields
.field public static final b:Lx3/x;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lx3/x;->a()Lx3/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lx3/x$a;->a()Lx3/x;

    move-result-object v0

    sput-object v0, Lx3/x;->b:Lx3/x;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lx3/z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx3/x;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lx3/x$a;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lx3/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx3/x$a;-><init>(Lx3/z;)V

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lx3/x;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "api"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lx3/x;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lx3/x;

    iget-object v0, p0, Lx3/x;->a:Ljava/lang/String;

    iget-object p1, p1, Lx3/x;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lx3/x;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lx3/o;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
