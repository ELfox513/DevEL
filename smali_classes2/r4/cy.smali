.class public final Lr4/cy;
.super Lr4/tw;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lr4/tw;-><init>()V

    iput-object p1, p0, Lr4/cy;->a:Ljava/lang/String;

    iput-object p2, p0, Lr4/cy;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/cy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/cy;->b:Ljava/lang/String;

    return-object v0
.end method
