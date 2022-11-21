.class public final synthetic Lr4/km1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/km1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/km1;->a:Ljava/lang/String;

    check-cast p1, Lr4/z10;

    new-instance v1, Lr4/lm1;

    invoke-direct {v1, v0, p1}, Lr4/lm1;-><init>(Ljava/lang/String;Lr4/z10;)V

    return-object v1
.end method
