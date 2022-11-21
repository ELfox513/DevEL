.class public final Lr4/y61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/cp2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/u61;


# direct methods
.method public constructor <init>(Lr4/u61;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/y61;->a:Lr4/u61;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/y61;->a:Lr4/u61;

    invoke-virtual {v0}, Lr4/u61;->c()Lr4/cp2;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/cp2;
    .locals 1

    iget-object v0, p0, Lr4/y61;->a:Lr4/u61;

    invoke-virtual {v0}, Lr4/u61;->c()Lr4/cp2;

    move-result-object v0

    return-object v0
.end method
