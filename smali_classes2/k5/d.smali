.class public Lk5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk5/d$a;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lk5/a;


# direct methods
.method public synthetic constructor <init>(Lk5/d$a;Lk5/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lk5/d$a;->e(Lk5/d$a;)Z

    move-result p2

    iput-boolean p2, p0, Lk5/d;->a:Z

    invoke-static {p1}, Lk5/d$a;->d(Lk5/d$a;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lk5/d;->b:Ljava/lang/String;

    invoke-static {p1}, Lk5/d$a;->c(Lk5/d$a;)Lk5/a;

    move-result-object p1

    iput-object p1, p0, Lk5/d;->c:Lk5/a;

    return-void
.end method


# virtual methods
.method public a()Lk5/a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lk5/d;->c:Lk5/a;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lk5/d;->a:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lk5/d;->b:Ljava/lang/String;

    return-object v0
.end method
