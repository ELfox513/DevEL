.class public final Lr4/ph1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/pj1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/mh1;


# direct methods
.method public constructor <init>(Lr4/mh1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ph1;->a:Lr4/mh1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/ph1;->a:Lr4/mh1;

    invoke-virtual {v0}, Lr4/mh1;->a()Lr4/pj1;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lr4/pj1;
    .locals 1

    iget-object v0, p0, Lr4/ph1;->a:Lr4/mh1;

    invoke-virtual {v0}, Lr4/mh1;->a()Lr4/pj1;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
