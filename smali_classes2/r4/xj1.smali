.class public final Lr4/xj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ej1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/qj1;


# direct methods
.method public constructor <init>(Lr4/qj1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/xj1;->a:Lr4/qj1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/xj1;->a:Lr4/qj1;

    invoke-virtual {v0}, Lr4/qj1;->a()Lr4/ej1;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lr4/ej1;
    .locals 1

    iget-object v0, p0, Lr4/xj1;->a:Lr4/qj1;

    invoke-virtual {v0}, Lr4/qj1;->a()Lr4/ej1;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
