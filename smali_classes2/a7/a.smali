.class public final La7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/a$b;
    }
.end annotation


# instance fields
.field public a:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lm5/c;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lq6/b<",
            "Lm7/p;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr6/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lq6/b<",
            "Lf2/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lz6/a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lcom/google/firebase/perf/session/gauges/GaugeManager;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lx6/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb7/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, La7/a;->c(Lb7/a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb7/a;La7/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, La7/a;-><init>(Lb7/a;)V

    return-void
.end method

.method public static b()La7/a$b;
    .locals 2

    new-instance v0, La7/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La7/a$b;-><init>(La7/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lx6/c;
    .locals 1

    iget-object v0, p0, La7/a;->h:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx6/c;

    return-object v0
.end method

.method public final c(Lb7/a;)V
    .locals 8

    invoke-static {p1}, Lb7/c;->a(Lb7/a;)Lb7/c;

    move-result-object v0

    iput-object v0, p0, La7/a;->a:Lr7/a;

    invoke-static {p1}, Lb7/f;->a(Lb7/a;)Lb7/f;

    move-result-object v0

    iput-object v0, p0, La7/a;->b:Lr7/a;

    invoke-static {p1}, Lb7/d;->a(Lb7/a;)Lb7/d;

    move-result-object v0

    iput-object v0, p0, La7/a;->c:Lr7/a;

    invoke-static {p1}, Lb7/h;->a(Lb7/a;)Lb7/h;

    move-result-object v0

    iput-object v0, p0, La7/a;->d:Lr7/a;

    invoke-static {p1}, Lb7/g;->a(Lb7/a;)Lb7/g;

    move-result-object v0

    iput-object v0, p0, La7/a;->e:Lr7/a;

    invoke-static {p1}, Lb7/b;->a(Lb7/a;)Lb7/b;

    move-result-object v0

    iput-object v0, p0, La7/a;->f:Lr7/a;

    invoke-static {p1}, Lb7/e;->a(Lb7/a;)Lb7/e;

    move-result-object v7

    iput-object v7, p0, La7/a;->g:Lr7/a;

    iget-object v1, p0, La7/a;->a:Lr7/a;

    iget-object v2, p0, La7/a;->b:Lr7/a;

    iget-object v3, p0, La7/a;->c:Lr7/a;

    iget-object v4, p0, La7/a;->d:Lr7/a;

    iget-object v5, p0, La7/a;->e:Lr7/a;

    iget-object v6, p0, La7/a;->f:Lr7/a;

    invoke-static/range {v1 .. v7}, Lx6/e;->a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Lx6/e;

    move-result-object p1

    invoke-static {p1}, Lq7/a;->a(Lr7/a;)Lr7/a;

    move-result-object p1

    iput-object p1, p0, La7/a;->h:Lr7/a;

    return-void
.end method
