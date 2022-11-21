.class public final synthetic Lr4/jf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# static fields
.field public static final a:Lr4/p03;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/jf2;

    invoke-direct {v0}, Lr4/jf2;-><init>()V

    sput-object v0, Lr4/jf2;->a:Lr4/p03;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lh3/j;

    if-eqz p1, :cond_0

    new-instance v0, Lr4/mf2;

    iget-object p1, p1, Lh3/j;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lr4/mf2;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lr4/mf2;

    const/4 p1, 0x0

    invoke-direct {v0, p1}, Lr4/mf2;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
