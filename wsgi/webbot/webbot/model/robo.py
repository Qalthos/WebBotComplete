# -*- coding: utf-8 -*-
"""My Login Modules stuff."""

from sqlalchemy import *
from sqlalchemy.orm import mapper, relation
from sqlalchemy import Table, ForeignKey, Column
from sqlalchemy.types import Integer, Unicode, DateTime
#from sqlalchemy.orm import relation, backref

from datetime import datetime

from webbot.model import DeclarativeBase, metadata, DBSession

class Game(DeclarativeBase):
    __tablename__ = 'games'

    id = Column(Unicode(255), primary_key=True)
    username = Column(Unicode(255), nullable=True)
    date = Column(DateTime, nullable=True)
