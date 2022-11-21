.class public final Lr4/s11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/g31;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/o11;


# direct methods
.method public constructor <init>(Lr4/o11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/s11;->a:Lr4/o11;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/s11;->a:Lr4/o11;

    invoke-virtual {v0}, Lr4/o11;->c()Lr4/g31;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lr4/g31;
    .locals 1

    iget-object v0, p0, Lr4/s11;->a:Lr4/o11;

    invoke-virtual {v0}, Lr4/o11;->c()Lr4/g31;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
