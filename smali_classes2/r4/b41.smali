.class public final Lr4/b41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/bp2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/x31;


# direct methods
.method public constructor <init>(Lr4/x31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/b41;->a:Lr4/x31;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr4/b41;->a:Lr4/x31;

    invoke-virtual {v0}, Lr4/x31;->a()Lr4/bp2;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lr4/bp2;
    .locals 1

    iget-object v0, p0, Lr4/b41;->a:Lr4/x31;

    invoke-virtual {v0}, Lr4/x31;->a()Lr4/bp2;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
