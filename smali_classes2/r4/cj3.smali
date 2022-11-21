.class public final Lr4/cj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/g93;


# instance fields
.field public final a:Ljava/security/interfaces/ECPrivateKey;

.field public final b:Lr4/ej3;

.field public final c:Ljava/lang/String;

.field public final d:[B

.field public final e:Lr4/bj3;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;ILr4/bj3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cj3;->a:Ljava/security/interfaces/ECPrivateKey;

    new-instance p4, Lr4/ej3;

    invoke-direct {p4, p1}, Lr4/ej3;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object p4, p0, Lr4/cj3;->b:Lr4/ej3;

    iput-object p2, p0, Lr4/cj3;->d:[B

    iput-object p3, p0, Lr4/cj3;->c:Ljava/lang/String;

    iput-object p5, p0, Lr4/cj3;->e:Lr4/bj3;

    return-void
.end method
