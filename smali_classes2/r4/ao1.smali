.class public final synthetic Lr4/ao1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/x;


# instance fields
.field public final a:Lr4/r81;


# direct methods
.method public constructor <init>(Lr4/r81;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ao1;->a:Lr4/r81;

    return-void
.end method

.method public static a(Lr4/r81;)La3/x;
    .locals 1

    new-instance v0, Lr4/ao1;

    invoke-direct {v0, p0}, Lr4/ao1;-><init>(Lr4/r81;)V

    return-object v0
.end method


# virtual methods
.method public final g()V
    .locals 1

    iget-object v0, p0, Lr4/ao1;->a:Lr4/r81;

    invoke-virtual {v0}, Lr4/r81;->a()V

    return-void
.end method
