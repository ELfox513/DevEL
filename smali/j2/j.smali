.class public final Lj2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Lj2/i;",
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
            "Lr2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr7/a;Lr7/a;Lr7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/j;->a:Lr7/a;

    iput-object p2, p0, Lj2/j;->b:Lr7/a;

    iput-object p3, p0, Lj2/j;->c:Lr7/a;

    return-void
.end method

.method public static a(Lr7/a;Lr7/a;Lr7/a;)Lj2/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Landroid/content/Context;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;",
            "Lr7/a<",
            "Lr2/a;",
            ">;)",
            "Lj2/j;"
        }
    .end annotation

    new-instance v0, Lj2/j;

    invoke-direct {v0, p0, p1, p2}, Lj2/j;-><init>(Lr7/a;Lr7/a;Lr7/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lr2/a;Lr2/a;)Lj2/i;
    .locals 1

    new-instance v0, Lj2/i;

    invoke-direct {v0, p0, p1, p2}, Lj2/i;-><init>(Landroid/content/Context;Lr2/a;Lr2/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lj2/i;
    .locals 3

    iget-object v0, p0, Lj2/j;->a:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lj2/j;->b:Lr7/a;

    invoke-interface {v1}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr2/a;

    iget-object v2, p0, Lj2/j;->c:Lr7/a;

    invoke-interface {v2}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr2/a;

    invoke-static {v0, v1, v2}, Lj2/j;->c(Landroid/content/Context;Lr2/a;Lr2/a;)Lj2/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj2/j;->b()Lj2/i;

    move-result-object v0

    return-object v0
.end method
