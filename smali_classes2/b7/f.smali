.class public final Lb7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr7/a;"
    }
.end annotation


# instance fields
.field public final a:Lb7/a;


# direct methods
.method public constructor <init>(Lb7/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb7/f;->a:Lb7/a;

    return-void
.end method

.method public static a(Lb7/a;)Lb7/f;
    .locals 1

    new-instance v0, Lb7/f;

    invoke-direct {v0, p0}, Lb7/f;-><init>(Lb7/a;)V

    return-object v0
.end method

.method public static c(Lb7/a;)Lq6/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb7/a;",
            ")",
            "Lq6/b<",
            "Lm7/p;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lb7/a;->e()Lq6/b;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lq7/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq6/b;

    return-object p0
.end method


# virtual methods
.method public b()Lq6/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq6/b<",
            "Lm7/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb7/f;->a:Lb7/a;

    invoke-static {v0}, Lb7/f;->c(Lb7/a;)Lq6/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb7/f;->b()Lq6/b;

    move-result-object v0

    return-object v0
.end method
