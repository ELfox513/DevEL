.class public final Lk5/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Lk5/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lk5/d$a;)Lk5/a;
    .locals 0

    iget-object p0, p0, Lk5/d$a;->c:Lk5/a;

    return-object p0
.end method

.method public static synthetic d(Lk5/d$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk5/d$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lk5/d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lk5/d$a;->a:Z

    return p0
.end method


# virtual methods
.method public a()Lk5/d;
    .locals 2
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lk5/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk5/d;-><init>(Lk5/d$a;Lk5/h;)V

    return-object v0
.end method

.method public b(Z)Lk5/d$a;
    .locals 0
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iput-boolean p1, p0, Lk5/d$a;->a:Z

    return-object p0
.end method
