.class public final synthetic Lr4/tp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ek;


# instance fields
.field public final a:Lr4/ek;

.field public final b:[B


# direct methods
.method public constructor <init>(Lr4/ek;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/tp0;->a:Lr4/ek;

    iput-object p2, p0, Lr4/tp0;->b:[B

    return-void
.end method


# virtual methods
.method public final zza()Lr4/fk;
    .locals 4

    iget-object v0, p0, Lr4/tp0;->a:Lr4/ek;

    iget-object v1, p0, Lr4/tp0;->b:[B

    sget v2, Lr4/xp0;->H:I

    invoke-interface {v0}, Lr4/ek;->zza()Lr4/fk;

    move-result-object v0

    new-instance v2, Lr4/dk;

    invoke-direct {v2, v1}, Lr4/dk;-><init>([B)V

    new-instance v3, Lr4/yp0;

    array-length v1, v1

    invoke-direct {v3, v2, v1, v0}, Lr4/yp0;-><init>(Lr4/fk;ILr4/fk;)V

    return-object v3
.end method
