.class public final synthetic Lr4/zm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nl2;


# instance fields
.field public final a:Lr4/eh0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/eh0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/zm2;->a:Lr4/eh0;

    iput-object p2, p0, Lr4/zm2;->b:Ljava/lang/String;

    iput-object p3, p0, Lr4/zm2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lr4/zm2;->a:Lr4/eh0;

    iget-object v1, p0, Lr4/zm2;->b:Ljava/lang/String;

    iget-object v2, p0, Lr4/zm2;->c:Ljava/lang/String;

    check-cast p1, Lr4/gh0;

    invoke-virtual {p1, v0, v1, v2}, Lr4/gh0;->b2(Lr4/eh0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
