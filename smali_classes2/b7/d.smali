.class public final Lb7/d;
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

    iput-object p1, p0, Lb7/d;->a:Lb7/a;

    return-void
.end method

.method public static a(Lb7/a;)Lb7/d;
    .locals 1

    new-instance v0, Lb7/d;

    invoke-direct {v0, p0}, Lb7/d;-><init>(Lb7/a;)V

    return-object v0
.end method

.method public static c(Lb7/a;)Lr6/g;
    .locals 1

    invoke-virtual {p0}, Lb7/a;->c()Lr6/g;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lq7/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/g;

    return-object p0
.end method


# virtual methods
.method public b()Lr6/g;
    .locals 1

    iget-object v0, p0, Lb7/d;->a:Lb7/a;

    invoke-static {v0}, Lb7/d;->c(Lb7/a;)Lr6/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb7/d;->b()Lr6/g;

    move-result-object v0

    return-object v0
.end method
