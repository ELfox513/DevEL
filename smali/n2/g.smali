.class public final Ln2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk2/b<",
        "Lo2/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr7/a<",
            "Lr2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Lr2/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/g;->a:Lr7/a;

    return-void
.end method

.method public static a(Lr2/a;)Lo2/g;
    .locals 1

    invoke-static {p0}, Ln2/f;->a(Lr2/a;)Lo2/g;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lk2/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo2/g;

    return-object p0
.end method

.method public static b(Lr7/a;)Ln2/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a<",
            "Lr2/a;",
            ">;)",
            "Ln2/g;"
        }
    .end annotation

    new-instance v0, Ln2/g;

    invoke-direct {v0, p0}, Ln2/g;-><init>(Lr7/a;)V

    return-object v0
.end method


# virtual methods
.method public c()Lo2/g;
    .locals 1

    iget-object v0, p0, Ln2/g;->a:Lr7/a;

    invoke-interface {v0}, Lr7/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/a;

    invoke-static {v0}, Ln2/g;->a(Lr2/a;)Lo2/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln2/g;->c()Lo2/g;

    move-result-object v0

    return-object v0
.end method
