.class public final synthetic Lr4/n31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/p03;


# static fields
.field public static final a:Lr4/p03;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/n31;

    invoke-direct {v0}, Lr4/n31;-><init>()V

    sput-object v0, Lr4/n31;->a:Lr4/p03;

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

    new-instance v0, Lr4/p31;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lr4/p31;-><init>(Ljava/util/List;)V

    return-object v0
.end method
