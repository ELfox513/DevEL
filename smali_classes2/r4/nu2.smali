.class public final Lr4/nu2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/mu2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/g52;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/cp2;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lc4/f;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/g52;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;",
            "Lr4/is3<",
            "Ljava/lang/String;",
            ">;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/cp2;",
            ">;",
            "Lr4/is3<",
            "Lc4/f;",
            ">;",
            "Lr4/is3<",
            "Lr4/u;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/nu2;->a:Lr4/is3;

    iput-object p2, p0, Lr4/nu2;->b:Lr4/is3;

    iput-object p3, p0, Lr4/nu2;->c:Lr4/is3;

    iput-object p4, p0, Lr4/nu2;->d:Lr4/is3;

    iput-object p5, p0, Lr4/nu2;->e:Lr4/is3;

    iput-object p6, p0, Lr4/nu2;->f:Lr4/is3;

    iput-object p7, p0, Lr4/nu2;->g:Lr4/is3;

    iput-object p8, p0, Lr4/nu2;->h:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lr4/nu2;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/g52;

    iget-object v0, p0, Lr4/nu2;->b:Lr4/is3;

    check-cast v0, Lr4/pu0;

    invoke-virtual {v0}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v3

    iget-object v0, p0, Lr4/nu2;->c:Lr4/is3;

    check-cast v0, Lr4/x61;

    invoke-virtual {v0}, Lr4/x61;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lr4/nu2;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, p0, Lr4/nu2;->e:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lr4/nu2;->f:Lr4/is3;

    check-cast v0, Lr4/y61;

    invoke-virtual {v0}, Lr4/y61;->b()Lr4/cp2;

    move-result-object v7

    iget-object v0, p0, Lr4/nu2;->g:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lc4/f;

    iget-object v0, p0, Lr4/nu2;->h:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lr4/u;

    new-instance v0, Lr4/mu2;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lr4/mu2;-><init>(Lr4/g52;Lr4/im0;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lr4/cp2;Lc4/f;Lr4/u;)V

    return-object v0
.end method
