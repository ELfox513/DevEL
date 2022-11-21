.class public final Lr4/d33;
.super Lr4/q33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/q33<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final q:Lr4/d33;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/d33;

    invoke-direct {v0}, Lr4/d33;-><init>()V

    sput-object v0, Lr4/d33;->q:Lr4/d33;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lr4/i53;->r:Lr4/s33;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lr4/q33;-><init>(Lr4/s33;I)V

    return-void
.end method
