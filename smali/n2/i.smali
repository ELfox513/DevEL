.class public final Ln2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Lo2/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lp2/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lo2/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lr7/a<",
            "Lp2/c;",
            ">;",
            "Lr7/a<",
            "Lo2/g;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/i;->a:Lr7/a;

    iput-object p2, p0, Ln2/i;->b:Lr7/a;

    iput-object p3, p0, Ln2/i;->c:Lr7/a;

    iput-object p4, p0, Ln2/i;->d:Lr7/a;

    return-void
.end method

.method public static a(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)Ln2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lr7/a<",
            "Lp2/c;",
            ">;",
            "Lr7/a<",
            "Lo2/g;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;)",
            "Ln2/i;"
        }
    .end annotation

    new-instance v0, Ln2/i;

    invoke-direct {v0, p0, p1, p2, p3}, Ln2/i;-><init>(Lr7/a;Lr7/a;Lr7/a;Lr7/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lp2/c;Lo2/g;Lr2/a;)Lo2/v;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ln2/h;->a(Landroid/content/Context;Lp2/c;Lo2/g;Lr2/a;)Lo2/v;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lk2/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo2/v;

    return-object p0
.end method


# virtual methods
.method public b()Lo2/v;
    .locals 4

    iget-object v0, p0, Ln2/i;->a:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ln2/i;->b:Lr7/a;

    invoke-interface {v1}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/c;

    iget-object v2, p0, Ln2/i;->c:Lr7/a;

    invoke-interface {v2}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo2/g;

    iget-object v3, p0, Ln2/i;->d:Lr7/a;

    invoke-interface {v3}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr2/a;

    invoke-static {v0, v1, v2, v3}, Ln2/i;->c(Landroid/content/Context;Lp2/c;Lo2/g;Lr2/a;)Lo2/v;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln2/i;->b()Lo2/v;

    move-result-object v0

    return-object v0
.end method
