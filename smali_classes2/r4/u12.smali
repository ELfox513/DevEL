.class public final Lr4/u12;
.super Lr4/sv1;
.source "SourceFile"


# instance fields
.field public final b:Lr4/lt;


# direct methods
.method public constructor <init>(ILr4/lt;)V
    .locals 1

    iget-object v0, p2, Lr4/lt;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lr4/sv1;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lr4/u12;->b:Lr4/lt;

    return-void
.end method


# virtual methods
.method public final b()Lr4/lt;
    .locals 1

    iget-object v0, p0, Lr4/u12;->b:Lr4/lt;

    return-object v0
.end method
