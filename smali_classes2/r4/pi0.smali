.class public final Lr4/pi0;
.super Lr4/uh0;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lr4/uh0;-><init>()V

    iput-object p1, p0, Lr4/pi0;->a:Ljava/lang/String;

    iput p2, p0, Lr4/pi0;->b:I

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/pi0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lr4/pi0;->b:I

    return v0
.end method
