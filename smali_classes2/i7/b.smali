.class public final Li7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lc7/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lf2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/f<",
            "Lk7/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lc7/a;->e()Lc7/a;

    move-result-object v0

    sput-object v0, Li7/b;->d:Lc7/a;

    return-void
.end method

.method public constructor <init>(Lq6/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/b<",
            "Lf2/g;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Li7/b;->a:Ljava/lang/String;

    iput-object p1, p0, Li7/b;->b:Lq6/b;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Li7/b;->c:Lf2/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Li7/b;->b:Lq6/b;

    invoke-interface {v0}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf2/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li7/b;->a:Ljava/lang/String;

    const-class v2, Lk7/i;

    const-string v3, "proto"

    invoke-static {v3}, Lf2/b;->b(Ljava/lang/String;)Lf2/b;

    move-result-object v3

    new-instance v4, Li7/a;

    invoke-direct {v4}, Li7/a;-><init>()V

    invoke-interface {v0, v1, v2, v3, v4}, Lf2/g;->a(Ljava/lang/String;Ljava/lang/Class;Lf2/b;Lf2/e;)Lf2/f;

    move-result-object v0

    iput-object v0, p0, Li7/b;->c:Lf2/f;

    goto :goto_0

    :cond_0
    sget-object v0, Li7/b;->d:Lc7/a;

    const-string v1, "Flg TransportFactory is not available at the moment"

    invoke-virtual {v0, v1}, Lc7/a;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Li7/b;->c:Lf2/f;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public b(Lk7/i;)V
    .locals 1

    invoke-virtual {p0}, Li7/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Li7/b;->d:Lc7/a;

    const-string v0, "Unable to dispatch event because Flg Transport is not available"

    invoke-virtual {p1, v0}, Lc7/a;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Li7/b;->c:Lf2/f;

    invoke-static {p1}, Lf2/c;->d(Ljava/lang/Object;)Lf2/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lf2/f;->b(Lf2/c;)V

    return-void
.end method
