.class public final Lr4/z61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/hp2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/u61;


# direct methods
.method public constructor <init>(Lr4/u61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/z61;->a:Lr4/u61;

    return-void
.end method

.method public static c(Lr4/u61;)Lr4/hp2;
    .locals 0

    invoke-virtual {p0}, Lr4/u61;->b()Lr4/hp2;

    move-result-object p0

    invoke-static {p0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/z61;->a:Lr4/u61;

    invoke-virtual {v0}, Lr4/u61;->b()Lr4/hp2;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lr4/hp2;
    .locals 1

    iget-object v0, p0, Lr4/z61;->a:Lr4/u61;

    invoke-virtual {v0}, Lr4/u61;->b()Lr4/hp2;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
