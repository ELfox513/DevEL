.class public final synthetic Lr4/mr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/l7;


# instance fields
.field public final a:Lr4/l7;

.field public final b:[B


# direct methods
.method public constructor <init>(Lr4/l7;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/mr0;->a:Lr4/l7;

    iput-object p2, p0, Lr4/mr0;->b:[B

    return-void
.end method


# virtual methods
.method public final zza()Lr4/o8;
    .locals 4

    iget-object v0, p0, Lr4/mr0;->a:Lr4/l7;

    iget-object v1, p0, Lr4/mr0;->b:[B

    sget v2, Lr4/sr0;->G:I

    invoke-interface {v0}, Lr4/l7;->zza()Lr4/o8;

    move-result-object v0

    new-instance v2, Lr4/lw3;

    invoke-direct {v2, v1}, Lr4/lw3;-><init>([B)V

    new-instance v3, Lr4/gr0;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lr4/gr0;-><init>(Lr4/o8;ILr4/o8;)V

    return-object v3
.end method
