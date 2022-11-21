.class public final Lu3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/a$f;,
        Lu3/a$b;,
        Lu3/a$g;,
        Lu3/a$c;,
        Lu3/a$d;,
        Lu3/a$a;,
        Lu3/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lu3/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lu3/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$a<",
            "*TO;>;"
        }
    .end annotation
.end field

.field public final b:Lu3/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a$g<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lu3/a$a;Lu3/a$g;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lu3/a$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lu3/a$g;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lu3/a$f;",
            ">(",
            "Ljava/lang/String;",
            "Lu3/a$a<",
            "TC;TO;>;",
            "Lu3/a$g<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lu3/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lu3/a;->a:Lu3/a$a;

    iput-object p3, p0, Lu3/a;->b:Lu3/a$g;

    return-void
.end method


# virtual methods
.method public final a()Lu3/a$a;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu3/a$a<",
            "*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lu3/a;->a:Lu3/a$a;

    return-object v0
.end method

.method public final b()Lu3/a$c;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu3/a$c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lu3/a;->b:Lu3/a$g;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lu3/a;->c:Ljava/lang/String;

    return-object v0
.end method
