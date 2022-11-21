.class public final synthetic Lr4/r22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Lr4/i11;


# direct methods
.method public constructor <init>(Lr4/i11;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/r22;->a:Lr4/i11;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lr4/r22;->a:Lr4/i11;

    invoke-virtual {p1}, Lr4/i11;->h()Lr4/h11;

    move-result-object p1

    return-object p1
.end method
